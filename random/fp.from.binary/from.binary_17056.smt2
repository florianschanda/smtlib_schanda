(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +halfpoint)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b01100111110001110011000)))
;; x should be Float32(0x4933E398 [Rational(1473651, 2), 736825.500000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b01001001001100111110001110011000

(assert (not (= y #b01001001001100111110001110011000)))
(check-sat)
(exit)
