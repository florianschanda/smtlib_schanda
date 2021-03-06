(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; on low bound (inclusive)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x140EDA32)))
;; x should be Float32(0x140EDA32 [Rational(4680985, 649037107316853453566312041152512), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 4680985.0 649037107316853453566312041152512.0))))
;; w should be Float32(0x140EDA32 [Rational(4680985, 649037107316853453566312041152512), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
