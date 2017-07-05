(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.095170006089879688460086981649510562419891357421875p-481 {- 428607603963230 -481 (-1.7541e-145)}
; Y = -1.7371031926950786239416402167989872395992279052734375p-637 {- 3319617663955159 -637 (-3.04592e-192)}
; -1.095170006089879688460086981649510562419891357421875p-481 > -1.7371031926950786239416402167989872395992279052734375p-637 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000011110 #b0001100001011101000011111011111110110111010101011110)))
(assert (= y (fp #b1 #b00110000010 #b1011110010110010110010110111101001100111000011010111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
