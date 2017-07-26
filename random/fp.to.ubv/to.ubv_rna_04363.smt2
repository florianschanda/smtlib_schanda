(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49B94AC8)))
;; x should be Float32(0x49B94AC8 [Rational(1517913), 1517913.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be 1517913

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000101110010100101011001))
;; z should be 1517913

(assert (= y z))
(check-sat)
(exit)
