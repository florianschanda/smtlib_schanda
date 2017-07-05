(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.24207682670391594825787251465953886508941650390625p422 {+ 1090217106538788 422 (1.34526e+127)}
; Y = -1.6370512334156208655855380129651166498661041259765625p115 {- 2869023697426505 115 (-6.80004e+034)}
; 1.24207682670391594825787251465953886508941650390625p422 * -1.6370512334156208655855380129651166498661041259765625p115 == -1.016671700576302850294041490997187793254852294921875p538
; [HW: -1.016671700576302850294041490997187793254852294921875p538] 

; mpf : - 75082664503070 538
; mpfd: - 75082664503070 538 (-9.14784e+161) class: Neg. norm. non-zero
; hwf : - 75082664503070 538 (-9.14784e+161) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110100101 #b0011110111111000101111110011010111010000000100100100)))
(assert (= y (fp #b1 #b10001110010 #b1010001100010101110010100010010101100101100001001001)))
(assert (= r (fp #b1 #b11000011001 #b0000010001000100100110001011100010111110011100011110)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
