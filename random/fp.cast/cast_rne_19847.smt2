(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b11001001 #b11001011010111001011111)))
;; x should be Float32(0xE4E5AE5F [Rational(-33894953234918994345984), -33894953234918994345984.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNE x)))
;; y should be Float16(-oo)

(declare-const z Float16)
(assert (= z (_ -oo 5 11)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
