(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0068670285159189159429615756380371749401092529296875p276 {+ 30926347065435 276 (1.22251e+083)}
; Y = 1.2552188117450862048229964784695766866207122802734375p945 {+ 1149403345473111 945 (3.73306e+284)}
; 1.0068670285159189159429615756380371749401092529296875p276 > 1.2552188117450862048229964784695766866207122802734375p945 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100010011 #b0000000111000010000010011001111011100101100001011011)))
(assert (= y (fp #b0 #b11110110000 #b0100000101010110000001010010000111000100111001010111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
