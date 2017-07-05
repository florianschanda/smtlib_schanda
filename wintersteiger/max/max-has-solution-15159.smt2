(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.347181297053449355871634907089173793792724609375p737 {- 1563565560039920 737 (-9.73941e+221)}
; Y = 1.329710685719935003845648679998703300952911376953125p177 {+ 1484884921348370 177 (2.54722e+053)}
; -1.347181297053449355871634907089173793792724609375p737 M 1.329710685719935003845648679998703300952911376953125p177 == 1.329710685719935003845648679998703300952911376953125p177
; [HW: 1.329710685719935003845648679998703300952911376953125p177] 

; mpf : + 1484884921348370 177
; mpfd: + 1484884921348370 177 (2.54722e+053) class: Pos. norm. non-zero
; hwf : + 1484884921348370 177 (2.54722e+053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011100000 #b0101100011100000110111111001110010100000100111110000)))
(assert (= y (fp #b0 #b10010110000 #b0101010001100111111010110110010001001111000100010010)))
(assert (= r (fp #b0 #b10010110000 #b0101010001100111111010110110010001001111000100010010)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
