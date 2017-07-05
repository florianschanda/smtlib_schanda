(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2468872867147011707089632182032801210880279541015625p-628 {+ 1111881492450841 -628 (1.11941e-189)}
; Y = -1.184869217976463051655855451826937496662139892578125p-319 {- 832576941191074 -319 (-1.10943e-096)}
; 1.2468872867147011707089632182032801210880279541015625p-628 = -1.184869217976463051655855451826937496662139892578125p-319 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110001011 #b0011111100110100000000010101011000111100111000011001)))
(assert (= y (fp #b1 #b01011000000 #b0010111101010011100101101100110100111110111110100010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
