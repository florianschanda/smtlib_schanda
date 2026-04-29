(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AFA2077)))
;; x should be Float32(0x4AFA2077 [Rational(16392311, 2), 8196155.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 2098215915.0 256.0))))
;; w should be Float32(0x4AFA2078 [Rational(8196156), 8196156.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
