(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80800000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 9577981483.0 892029807941224925661428730905934460239216640000.0)))))
;; w should be Float32(0x8074EB32 [Rational(-3831193, 356811923176489970264571492362373784095686656), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
