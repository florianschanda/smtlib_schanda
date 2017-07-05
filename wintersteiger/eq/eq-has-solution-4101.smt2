(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2146633158625135262553840220789425075054168701171875p623 {- 966757629328531 623 (-4.22808e+187)}
; Y = -1.32736319914248301898851423175074160099029541015625p-626 {- 1474312781672900 -626 (-4.76664e-189)}
; -1.2146633158625135262553840220789425075054168701171875p623 = -1.32736319914248301898851423175074160099029541015625p-626 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001101110 #b0011011011110100001011001101000101000111110010010011)))
(assert (= y (fp #b1 #b00110001101 #b0101001111001110000100110001101000111011000111000100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
