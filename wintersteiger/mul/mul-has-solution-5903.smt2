(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7354650539512039841838486609049141407012939453125p823 {+ 3312240142918664 823 (9.70739e+247)}
; Y = -1.196747974489418719912237065727822482585906982421875p255 {- 886074104596446 255 (-6.9287e+076)}
; 1.7354650539512039841838486609049141407012939453125p823 * -1.196747974489418719912237065727822482585906982421875p255 == -1.9999999999999997779553950749686919152736663818359375p1023
; [HW: -1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : - 4503599627370495 1023
; mpfd: - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero
; hwf : - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100110110 #b1011110001000111011100000001001000010010010000001000)))
(assert (= y (fp #b1 #b10011111110 #b0011001001011110000100110100001111111100011111011110)))
(assert (= r (fp #b1 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
