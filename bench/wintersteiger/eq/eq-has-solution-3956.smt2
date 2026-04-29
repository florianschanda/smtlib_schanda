(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.970004664170572628023592187673784792423248291015625p59 {- 4368512644106234 59 (-1.13563e+018)}
; Y = -1.851444108639434649177246683393605053424835205078125p45 {- 3834563370395362 45 (-6.51419e+013)}
; -1.970004664170572628023592187673784792423248291015625p59 = -1.851444108639434649177246683393605053424835205078125p45 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111010 #b1111100001010010001110011100010110010100011111111010)))
(assert (= y (fp #b1 #b10000101100 #b1101100111111000001111011011100011111010011011100010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
