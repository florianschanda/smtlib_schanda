(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 280253833764942734447558970274534646646) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11010010110101101110110011001111111011010111001110111000101001100011010011011100111111110100110101110001111111111110001101110110))
;; x should be 280253833764942734447558970274534646646
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x7F52D6EC))))
(check-sat)
(exit)
