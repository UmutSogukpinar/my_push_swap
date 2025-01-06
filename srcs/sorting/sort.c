/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sort.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: umut <umut@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/09 20:20:51 by umut              #+#    #+#             */
/*   Updated: 2025/01/06 17:55:27 by umut             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "sort.h"

void	sort(t_sort *sort_struct)
{
	if (ft_lstsize(sort_struct -> stack_a) == 1)
		return ;
	else if (ft_lstsize(sort_struct -> stack_a) == 2)
		sort_for_two(&(sort_struct -> stack_a));
	else if (ft_lstsize(sort_struct -> stack_a) == 3)
		sort_for_three(&(sort_struct -> stack_a));
	else if (ft_lstsize(sort_struct -> stack_a) >= 4)
		sort_default(sort_struct);
}
