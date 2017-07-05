(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4291301082591101323515658805263228714466094970703125p361 {+ 1932630195649189 361 (6.71275e+108)}
; Y = 1.3540357719554918514148766917060129344463348388671875p376 {+ 1594435370654579 376 (2.08405e+113)}
; 1.4291301082591101323515658805263228714466094970703125p361 > 1.3540357719554918514148766917060129344463348388671875p376 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101101000 #b0110110111011011011110001000010010110011101010100101)))
(assert (= y (fp #b0 #b10101110111 #b0101101010100010000101101001111000101001101101110011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
