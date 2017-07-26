(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE +subnormal)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11000010110001100100000)))
;; x should be Float32(0x00616320 [Rational(199449, 22300745198530623141535718272648361505980416), 0.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be 0

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000000000))
;; z should be 0

(assert (not (= y z)))
(check-sat)
(exit)
