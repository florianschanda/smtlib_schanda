(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A93C6E7)))
;; x should be Float32(0x4A93C6E7 [Rational(9684711, 2), 4842355.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 4842356

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010010011110001101110100))
;; z should be 4842356

(assert (= y z))
(check-sat)
(exit)
