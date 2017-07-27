(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -normal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xE3861A56)))
;; x should be Float32(0xE3861A56 [Rational(-4947522820340126318592), -4947522820340126318592.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b11100011100001100001101001010110

(assert (not (= y #b11100011100001100001101001010110)))
(check-sat)
(exit)
