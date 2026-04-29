(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3334327494001734226714006581460125744342803955078125p-281 {+ 1501647605951741 -281 (3.43196e-085)}
; Y = 1.813142685419259603207819964154623448848724365234375p-106 {+ 3662069095053222 -106 (2.23487e-032)}
; 1.3334327494001734226714006581460125744342803955078125p-281 = 1.813142685419259603207819964154623448848724365234375p-106 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011100110 #b0101010101011011110110010100001000010110110011111101)))
(assert (= y (fp #b0 #b01110010101 #b1101000000101010000111100111100011011011011110100110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
