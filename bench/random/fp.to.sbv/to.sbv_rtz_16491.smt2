(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10011111 #b10100000110111010101000)))
;; x should be Float32(0x4FD06EA8 [Rational(6993825792), 6993825792.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be 6993825792

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000110100000110111010101000000000000))
;; z should be 6993825792

(assert (= y z))
(check-sat)
(exit)
