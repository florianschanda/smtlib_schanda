(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b00011001101010000000110100001101101101010101011001010100110000110011001101010100111110000101011110011000100100101001001010101010))
;; x should be 34103270524268862699089025141509886634

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x7DCD4068))))
(check-sat)
(exit)
