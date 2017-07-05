(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3049303719513078991809607032337225973606109619140625p209 {+ 1373284309493857 209 (1.07363e+063)}
; Y = -1.5471701365752508205986259781639091670513153076171875p822 {- 2464235223188563 822 (-4.32708e+247)}
; 1.3049303719513078991809607032337225973606109619140625p209 % -1.5471701365752508205986259781639091670513153076171875p822 == 1.3049303719513078991809607032337225973606109619140625p209
; [HW: 1.3049303719513078991809607032337225973606109619140625p209] 

; mpf : + 1373284309493857 209
; mpfd: + 1373284309493857 209 (1.07363e+063) class: Pos. norm. non-zero
; hwf : + 1373284309493857 209 (1.07363e+063) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011010000 #b0100111000001111111010101011011100010110100001100001)))
(assert (= y (fp #b1 #b11100110101 #b1000110000010011010101111001000111110000010001010011)))
(assert (= r (fp #b0 #b10011010000 #x4e0feab716861)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
