(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2243699685223432549463495888630859553813934326171875p-33 {- 1010472506630355 -33 (-1.42535e-010)}
; Y = -oo {- 0 1024 (-1.#INF)}
; Z = -1.7251513018284863054674360682838596403598785400390625p-661 {- 3265791132702001 -661 (-1.80302e-199)}
; -1.2243699685223432549463495888630859553813934326171875p-33 x -oo -1.7251513018284863054674360682838596403598785400390625p-661 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111011110 #b0011100101110000010011110110110100000010000011010011)))
(assert (= y (_ -oo 11 53)))
(assert (= z (fp #b1 #b00101101010 #b1011100110100011100001000000011000000001010100110001)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
