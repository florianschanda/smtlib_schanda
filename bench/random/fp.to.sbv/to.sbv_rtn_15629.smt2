(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b00100101110111011001000)))
;; x should be Float32(0x4992EEC8 [Rational(1203673), 1203673.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be 1203673

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000100100101110111011001))
;; z should be 1203673

(assert (= y z))
(check-sat)
(exit)
