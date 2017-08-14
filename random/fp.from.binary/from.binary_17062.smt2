(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +halfpoint)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4892F050)))
;; x should be Float32(0x4892F050 [Rational(601861, 2), 300930.500000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b01001000100100101111000001010000

(assert (not (= y #b01001000100100101111000001010000)))
(check-sat)
(exit)
