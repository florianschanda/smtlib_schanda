(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x002405CA)))
;; y should be Float32(0x002405CA [Rational(1180389, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80197D12)))
;; z should be Float32(0x80197D12 [Rational(-835209, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #x80197D12))))
(check-sat)
(exit)
