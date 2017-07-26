(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -subnormal)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10011000110101001011011)))
;; x should be Float32(0x804C6A5B [Rational(-5007963, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RTZ x)))
;; y should be 0

(declare-const z (_ BitVec 8))
(assert (= z #b00000000))
;; z should be 0

(assert (= y z))
(check-sat)
(exit)
