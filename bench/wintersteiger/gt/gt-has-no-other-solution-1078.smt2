(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1765193242144074137200959739857353270053863525390625p256 {- 794972362755697 256 (-1.36232e+077)}
; Y = -1.61240242984657822233884871820919215679168701171875p787 {- 2758015354857836 787 (-1.31244e+237)}
; -1.1765193242144074137200959739857353270053863525390625p256 > -1.61240242984657822233884871820919215679168701171875p787 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011111111 #b0010110100110000010111101101010010011100111001110001)))
(assert (= y (fp #b1 #b11100010010 #b1001110011000110011001111101100000101110100101101100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
