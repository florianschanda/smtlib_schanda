(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1142783749049469665948208785266615450382232666015625p495 {- 514664046638425 495 (-1.13983e+149)}
; -1.1142783749049469665948208785266615450382232666015625p495 | == 1.1142783749049469665948208785266615450382232666015625p495
; [HW: 1.1142783749049469665948208785266615450382232666015625p495] 

; mpf : + 514664046638425 495
; mpfd: + 514664046638425 495 (1.13983e+149) class: Pos. norm. non-zero
; hwf : + 514664046638425 495 (1.13983e+149) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111101110 #b0001110101000001010110001111101011011011010101011001)))
(assert (= r (fp #b0 #b10111101110 #b0001110101000001010110001111101011011011010101011001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
