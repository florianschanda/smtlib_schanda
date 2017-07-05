(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.63199863724441751600124916876666247844696044921875p730 {- 2846268827192620 730 (-9.21757e+219)}
; Y = 1.703072312172832170062974910251796245574951171875p-1012 {+ 3166356203116080 -1012 (3.88041e-305)}
; -1.63199863724441751600124916876666247844696044921875p730 * 1.703072312172832170062974910251796245574951171875p-1012 == -1.3897058462973805870177557153510861098766326904296875p-281
; [HW: -1.3897058462973805870177557153510861098766326904296875p-281] 

; mpf : - 1755079104168987 -281
; mpfd: - 1755079104168987 -281 (-3.5768e-085) class: Neg. norm. non-zero
; hwf : - 1755079104168987 -281 (-3.5768e-085) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011011001 #b1010000111001010101010011010011000010100110100101100)))
(assert (= y (fp #b0 #b00000001011 #b1011001111111100100011000000101110000001011000110000)))
(assert (= r (fp #b1 #b01011100110 #b0110001111000011110000110010100011101000010000011011)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
