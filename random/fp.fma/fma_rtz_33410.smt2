(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8770CFE7)))
;; x should be Float32(0x8770CFE7 [Rational(-15781863, 87112285931760246646623899502532662132736), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC8BB5D30)))
;; y should be Float32(0xC8BB5D30 [Rational(-767443, 2), -383721.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x5BB8FAAB)))
;; z should be Float32(0x5BB8FAAB [Rational(104134016122224640), 104134016122224640.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result ((_ to_fp 8 24) #x5BB8FAAB)))
(check-sat)
(exit)
