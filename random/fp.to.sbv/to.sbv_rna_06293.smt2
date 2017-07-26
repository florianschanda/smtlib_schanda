(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA -subnormal)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00100110101110111100000)))
;; x should be Float32(0x80135DE0 [Rational(-39663, 22300745198530623141535718272648361505980416), -0.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RNA x)))
;; y should be 0

(declare-const z (_ BitVec 8))
(assert (= z #b00000000))
;; z should be 0

(assert (not (= y z)))
(check-sat)
(exit)
