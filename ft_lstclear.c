/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cvixen <cvixen@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/04 19:26:39 by cvixen            #+#    #+#             */
/*   Updated: 2021/10/14 13:23:24 by cvixen           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void*))
{
	t_list	*f;

	if (!lst || !del)
		return ;
	while (*lst)
	{
		f = (*lst)->next;
		ft_lstdelone(*lst, del);
		*lst = f;
	}
}
