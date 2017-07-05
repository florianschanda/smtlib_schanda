(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.324575835983782923221951932646334171295166015625p47 {- 1461759613990032 47 (-1.86417e+014)}
; Y = 1.12689448453691465346082623000256717205047607421875p-451 {+ 571481953275820 -451 (1.93801e-136)}
; -1.324575835983782923221951932646334171295166015625p47 = 1.12689448453691465346082623000256717205047607421875p-451 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000101110 #b0101001100010111011001101110100010011111010010010000)))
(assert (= y (fp #b0 #b01000111100 #b0010000001111100001010000010110100100000111110101100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
