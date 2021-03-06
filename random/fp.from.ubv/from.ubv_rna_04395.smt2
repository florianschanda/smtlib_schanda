(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b10001100000100011110000010010100000101110000100101100100100011001010101010001110110100111100111000001111100111110110000011000101))
;; x should be 186184743449132094751264853747858104517

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x47E1823C1282E12D))))
(check-sat)
(exit)
