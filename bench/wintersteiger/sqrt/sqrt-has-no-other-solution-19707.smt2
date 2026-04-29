(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1738120582549942394479103313642553985118865966796875p1008 {+ 782779920789691 1008 (3.21984e+303)}
; 1.1738120582549942394479103313642553985118865966796875p1008 S == 1.0834260741993400056770724404486827552318572998046875p504
; [HW: 1.0834260741993400056770724404486827552318572998046875p504] 

; mpf : + 375717636677131 504
; mpfd: + 375717636677131 504 (5.67436e+151) class: Pos. norm. non-zero
; hwf : + 375717636677131 504 (5.67436e+151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111101111 #b0010110001111110111100100111000111011011000010111011)))
(assert (= r (fp #b0 #b10111110111 #b0001010101011011011010010100010001010001111000001011)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
