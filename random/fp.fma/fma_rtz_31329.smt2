(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAC79203)))
;; x should be Float32(0xCAC79203 [Rational(-13079043, 2), -6539521.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80800000)))
;; y should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCC8C2D38)))
;; z should be Float32(0xCC8C2D38 [Rational(-73492928), -73492928.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #xCC8C2D37))))
(check-sat)
(exit)
