(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b11000110010111001110011)))
;; x should be Float32(0x4A632E73 [Rational(14888563, 4), 3722140.750000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be 3722140

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001110001100101110011100))
;; z should be 3722140

(assert (= y z))
(check-sat)
(exit)
