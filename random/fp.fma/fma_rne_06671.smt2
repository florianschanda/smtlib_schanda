(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7FCDCAA1)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y (_ -zero 8 24)))
;; y should be Float32(-zero)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x4ADD0DCF)))
;; z should be Float32(0x4ADD0DCF [Rational(14486991, 2), 7243495.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #xFFFFFFFF))))
(check-sat)
(exit)
