(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.848184400105342017894827222335152328014373779296875p227 {+ 3819882948255886 227 (3.98616e+068)}
; Y = -1.8070816007198591268689824573812074959278106689453125p965 {- 3634772396259541 965 (-5.63538e+290)}
; 1.848184400105342017894827222335152328014373779296875p227 * -1.8070816007198591268689824573812074959278106689453125p965 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100010 #b1101100100100010100111001110001101101110000010001110)))
(assert (= y (fp #b1 #b11111000100 #b1100111010011100111001100101100001001011100011010101)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
