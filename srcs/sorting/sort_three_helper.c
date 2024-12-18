/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sort_three_helper.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: umut <umut@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/17 23:06:39 by umut              #+#    #+#             */
/*   Updated: 2024/12/18 11:30:14 by umut             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "operations.h"

void	sort_three_option_one(t_list **list)
{
	swap_a(list);
	reverse_rotate_a(list);
}

void	sort_three_option_two(t_list **list)
{
	reverse_rotate_a(list);
	swap_a(list);
}

void	sort_three_option_three(t_list **list)
{
	swap_a(list);
}

void	sort_three_option_four(t_list **list)
{
	reverse_rotate_a(list);
}

void	sort_three_option_five(t_list **list)
{
	rotate_a(list);
}
