(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -subnormal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11100000100000101100100)))
;; x should be Float32(0x80704164 [Rational(-1839193, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b10000000011100000100000101100100

(assert (not (= y #b10000000011100000100000101100100)))
(check-sat)
(exit)
