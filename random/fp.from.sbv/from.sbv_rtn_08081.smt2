(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsle x #b0111101100101110100100100001001010011010001011001001011001011010))
;; x should be 8876192524187506266

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTN x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)
