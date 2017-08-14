(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4E0040B1)))
;; x should be Float32(0x4E0040B1 [Rational(537930816), 537930816.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE 115031277.0)))
;; w should be Float32(0x4CDB679E [Rational(115031280), 115031280.000000])

(assert (distinct x w))
(check-sat)
(exit)
