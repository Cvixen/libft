/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cvixen <cvixen@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/04 19:26:39 by cvixen            #+#    #+#             */
/*   Updated: 2021/10/14 17:04:26 by cvixen           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))

{
	t_list	*i;
	t_list	*j;

	if (!lst)
		return (NULL);
	i = NULL;
	while (lst)
	{
		j = ft_lstnew((*f)(lst->content));
		if (!j)
		{
			ft_lstclear(&j, del);
			return (NULL);
		}
		lst = lst->next;
		ft_lstadd_back(&i, j);
	}
	return (i);
}
