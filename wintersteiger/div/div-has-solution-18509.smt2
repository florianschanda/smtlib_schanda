(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7709793369437678567379634841927327215671539306640625p-245 {- 3472182254570305 -245 (-3.13231e-074)}
; Y = -1.4968727393304035455656730846385471522808074951171875p-387 {- 2237715883698963 -387 (-4.74872e-117)}
; -1.7709793369437678567379634841927327215671539306640625p-245 / -1.4968727393304035455656730846385471522808074951171875p-387 == 1.1831195066963278161864536741632036864757537841796875p142
; [HW: 1.1831195066963278161864536741632036864757537841796875p142] 

; mpf : + 824696942121851 142
; mpfd: + 824696942121851 142 (6.59611e+042) class: Pos. norm. non-zero
; hwf : + 824696942121851 142 (6.59611e+042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100001010 #b1100010101011110111001101101111000010000101101000001)))
(assert (= y (fp #b1 #b01001111100 #b0111111100110011000011010100010110110010101100010011)))
(assert (= r (fp #b0 #b10010001101 #b0010111011100000111010111000010010000101001101111011)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
