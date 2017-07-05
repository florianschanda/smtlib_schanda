(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5546426184953621163487014200654812157154083251953125p934 {+ 2497888289979509 934 (2.2576e+281)}
; 1.5546426184953621163487014200654812157154083251953125p934 S == 1.246853086171487046129868758725933730602264404296875p467
; [HW: 1.246853086171487046129868758725933730602264404296875p467] 

; mpf : + 1111727466897166 467
; mpfd: + 1111727466897166 467 (4.75142e+140) class: Pos. norm. non-zero
; hwf : + 1111727466897166 467 (4.75142e+140) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110100101 #b1000110111111101000011110000001101100111110001110101)))
(assert (= r (fp #b0 #b10111010010 #b0011111100110001110000111000110000000101111100001110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
