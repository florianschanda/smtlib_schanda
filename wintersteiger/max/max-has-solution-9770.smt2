(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.17056449453361732793155169929377734661102294921875p-244 {+ 768154194024236 -244 (4.14073e-074)}
; Y = 1.263442679061506535020953378989361226558685302734375p5 {+ 1186440351254886 5 (40.4302)}
; 1.17056449453361732793155169929377734661102294921875p-244 M 1.263442679061506535020953378989361226558685302734375p5 == 1.263442679061506535020953378989361226558685302734375p5
; [HW: 1.263442679061506535020953378989361226558685302734375p5] 

; mpf : + 1186440351254886 5
; mpfd: + 1186440351254886 5 (40.4302) class: Pos. norm. non-zero
; hwf : + 1186440351254886 5 (40.4302) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100001011 #b0010101110101010000111010101110111100001011100101100)))
(assert (= y (fp #b0 #b10000000100 #b0100001101110000111110101011101011110000100101100110)))
(assert (= r (fp #b0 #b10000000100 #b0100001101110000111110101011101011110000100101100110)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
