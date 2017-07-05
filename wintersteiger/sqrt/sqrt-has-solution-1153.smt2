(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4214944488551217727234643461997620761394500732421875p-488 {+ 1898242242802659 -488 (1.77872e-147)}
; 1.4214944488551217727234643461997620761394500732421875p-488 S == 1.1922644206949739587031444898457266390323638916015625p-244
; [HW: 1.1922644206949739587031444898457266390323638916015625p-244] 

; mpf : + 865881973398489 -244
; mpfd: + 865881973398489 -244 (4.21749e-074) class: Pos. norm. non-zero
; hwf : + 865881973398489 -244 (4.21749e-074) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000010111 #b0110101111100111000011110110100101000111001111100011)))
(assert (= r (fp #b0 #b01100001011 #b0011000100111000001111011011011100010001101111011001)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
