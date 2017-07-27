(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (_ +oo 8 24)))
;; x should be Float32(+oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- 177160518289220393611695301567484661686.0))))
;; w should be Float32(0xFF0547E0 [Rational(-177160519776101001832006968440948523008), -177160519776101001832006968440948523008.000000])

(assert (distinct x w))
(check-sat)
(exit)
