(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.652980559519767300713510849163867533206939697265625p788 {+ 2940763004533402 788 (2.69094e+237)}
; 1.652980559519767300713510849163867533206939697265625p788 S == 1.2856829156210201059451492255902849137783050537109375p394
; [HW: 1.2856829156210201059451492255902849137783050537109375p394] 

; mpf : + 1286601472336943 394
; mpfd: + 1286601472336943 394 (5.18743e+118) class: Pos. norm. non-zero
; hwf : + 1286601472336943 394 (5.18743e+118) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100010011 #b1010011100101001101110111110010000001111101010011010)))
(assert (= r (fp #b0 #b10110001001 #b0100100100100010100000111111101110011110010000101111)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
