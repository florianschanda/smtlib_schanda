(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b11010100100011000000000)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x3C5BFC8A)))
;; y should be Float32(0x3C5BFC8A [Rational(7208517, 536870912), 0.013427])

(declare-const result Float32)
(assert (= result (fp.add RTZ x y)))
(assert (not (= result ((_ to_fp 8 24) #xFFFFFFFF))))
(check-sat)
(exit)
