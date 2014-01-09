#include <iostream>
#include <stdlib.h>
#include <assert.h>

#define INITIAL_GC_THRESHOLD 100
#define STACK_MAX 256

/* a small virtual machine with two types, int and pair */
typedef enum {
	OBJ_INT,
	OBJ_PAIR
} ObjectType;

typedef struct sObject {
	/* VM own list */
	struct sObject* next;
	/* body */
	unsigned char marked;
	ObjectType type;
	union {
		/* OBJ_INT */
		int value;
		/* OBJ_PAIR */
		struct {
			struct sObject* head;
			struct sObject* tail;
		};
	};
} Object;

typedef struct {
	int numObjects;
	int maxObjects;
	/* head of VM list */
	Object* firstObject;
	/* body */
	Object* stack[STACK_MAX];
	int stackSize;
} VM;

VM* newVM() {
	VM* vm=(VM*)malloc(sizeof(VM));
	vm->stackSize=0;
	/* initialization */
	vm->numObjects=0;
	vm->maxObjects=INITIAL_GC_THRESHOLD;
	return vm;
}

void push(VM* vm, Object* value) {
	assert((vm->stackSize < STACK_MAX, "Stack overflow!"));
	vm->stack[vm->stackSize++]=value;
}

Object* pop(VM* vm){
	assert((vm->stackSize>0, "Stack underflow!"));
	return vm->stack[--vm->stackSize];
}

void gc(VM* vm);

Object* newObject(VM* vm, ObjectType type){
	if(vm->numObjects==vm->maxObjects) gc(vm);
	/* body */
	Object* object=(Object*)malloc(sizeof(Object));
	object->marked=0;
	object->type=type;
	/* insert it into the list of allocated objects */
	object->next=vm->firstObject;
	vm->firstObject=object;
	/* increase num */
	vm->numObjects++;
	return object;
}

void pushInt(VM* vm, int intValue){
	Object* object=newObject(vm, OBJ_INT);
	object->value=intValue;
	push(vm, object);
}

Object* pushPair(VM* vm){
	Object* object=newObject(vm, OBJ_PAIR);
	object->tail=pop(vm);
	object->head=pop(vm);
	push(vm, object);
	return object;	
}

/* marking */

void mark(Object* object){
	if(object->marked) return;
	object->marked=1;
	if(object->type==OBJ_PAIR){
		mark(object->head);
		mark(object->tail);
	}
}

void markAll(VM* vm)
{
	for(int i=0; i<vm->stackSize; i++){
		mark(vm->stack[i]);
	}
}

/* clearing unused memory */
void sweep(VM* vm)
{
	Object** object=&vm->firstObject;
	while(*object){
		if(!(*object)->marked){
			Object* unreached=*object;
			*object=unreached->next;
			free(unreached);
		}else {
			(*object)->marked=0;
			object=&(*object)->next;
		}
	}
}

/* use gc */
void gc(VM* vm){
	int numObjects=vm->numObjects;
	markAll(vm);
	sweep(vm);
	vm->maxObjects=vm->numObjects * 2;
}

int main()
{
	return 0;
}
