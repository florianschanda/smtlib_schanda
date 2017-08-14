(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x140EDA32)))
;; x should be Float32(0x140EDA32 [Rational(4680985, 649037107316853453566312041152512), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 405524473.0 81129638414606681695789005144064000.0)))))
;; w should be Float32(0x93C60290 [Rational(-811049, 162259276829213363391578010288128), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
