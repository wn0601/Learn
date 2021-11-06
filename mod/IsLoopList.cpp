#include<iostream>
#include<stdlib.h>

struct Node {
	int data;
	Node* next;
};

void DisPlay(Node* head)	//打印链表
{
	if (head == NULL)
	{
		std::cout << "The List is Empty!" << std::endl;
		return;
	}
	else
	{
		Node* p = head;
		while (p)
		{
			std::cout << p->data << " ";
			p = p->next;
			if (p->data == head->data)	//链表为环，防止无限循环下去，打印完退出
			{
				break;
			}
		}
	}
	std::cout << std::endl;
}

bool IsExistLoop(Node* head)	//是否存在环
{
	Node* slow = head;
	Node* fast = head;

	while (fast && fast->next)
	{
		slow = slow->next;
		fast = fast->next->next;

		if (fast == slow)
		{
			break;
		}
	}
	return !(fast == NULL || fast->next == NULL);
}

int GetLoopLength(Node* head)	//获取环的长度
{
	Node* slow = head;
	Node* fast = head;

	while (fast && fast->next)
	{
		slow = slow->next;
		fast = fast->next->next;

		if (fast == slow)
		{
			break;
		}
	}
	slow = slow->next;
	fast = fast->next->next;
	int length = 1;
	while (fast != slow)
	{
		slow = slow->next;
		fast = fast->next->next;

		length++;
	}
	return length;
}

Node* Init(int num)	//创建环形链表
{
	if (num <= 0)
	{
		return NULL;
	}
	Node* cur = NULL;
	Node* head = NULL;
	Node* node = (Node*)malloc(sizeof(Node));
	node->data = 1;
	cur = node;
	head = cur;
	for (int i = 1; i < num; i++)
	{
		Node* node = (Node*)malloc(sizeof(Node));
		node->data = i + 1;
		cur->next = node;
		cur = node;
	}
	cur->next = head;	//让最后一个元素的指针域指向头结点，形成环
	return head;
}

int main()
{
	Node* list = NULL;
	list = Init(10);
	DisPlay(list);
	
	if (IsExistLoop(list))
	{
		std::cout << "This List Has Loop" << std::endl;
		int length = GetLoopLength(list);
		std::cout << "Loop Length: " << length << std::endl;
	}
	else
	{
		std::cout << "This List Do Not Has Loop" << std::endl;

	}
	return 0;
}
