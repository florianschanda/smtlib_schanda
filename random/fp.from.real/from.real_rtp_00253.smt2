(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x698FE6A4)))
;; x should be Float32(0x698FE6A4 [Rational(21745695220247509843574784), 21745695220247509843574784.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP 21745695220247509843574786.0)))
;; w should be Float32(0x698FE6A5 [Rational(21745697526090519057268736), 21745697526090519057268736.000000])

(assert (distinct x w))
(check-sat)
(exit)
