/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: znaoui <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/04 14:57:33 by znaoui            #+#    #+#             */
/*   Updated: 2022/01/04 15:36:18 by znaoui           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <unistd.h>
# include <string.h>
# include <stdarg.h>

int	ft_putchar(char c);
int	ft_printf(const char *str, ...);
int	ft_putstr(char *str);
int	ft_putnbr(int nb);
int	ft_strlen(char *str);
int	ft_size_len(unsigned long long nb, int base);
int	ft_putnbr_hexa(unsigned int nb, char c);
int	ft_putnbr_adress(unsigned long long nb, int i);
int	ft_putnbr_unsigned(unsigned int nb);
#endif
