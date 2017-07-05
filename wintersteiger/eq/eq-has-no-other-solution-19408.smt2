(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.533996384548195646146950821275822818279266357421875p-931 {- 2404905918468446 -931 (-8.45081e-281)}
; Y = 1.5962436171850189481347115361131727695465087890625p484 {+ 2685242532176488 484 (7.97291e+145)}
; -1.533996384548195646146950821275822818279266357421875p-931 = 1.5962436171850189481347115361131727695465087890625p484 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001011100 #b1000100010110011111111001010111111010001000101011110)))
(assert (= y (fp #b0 #b10111100011 #b1001100010100011011010111111010001000010001001101000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
