(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1224771526507313357257089592167176306247711181640625p-467 {- 551588059039233 -467 (-2.94557e-141)}
; Y = -1.5163311332448063950550931622274219989776611328125p953 {- 2325348699281096 953 (-1.15446e+287)}
; -1.1224771526507313357257089592167176306247711181640625p-467 - -1.5163311332448063950550931622274219989776611328125p953 == 1.5163311332448063950550931622274219989776611328125p953
; [HW: 1.5163311332448063950550931622274219989776611328125p953] 

; mpf : + 2325348699281096 953
; mpfd: + 2325348699281096 953 (1.15446e+287) class: Pos. norm. non-zero
; hwf : + 2325348699281096 953 (1.15446e+287) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000101100 #b0001111101011010101010011010010100100100011000000001)))
(assert (= y (fp #b1 #b11110111000 #b1000010000101110010001101111001100110001011011001000)))
(assert (= r (fp #b0 #b11110111000 #b1000010000101110010001101111001100110001011011001000)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
